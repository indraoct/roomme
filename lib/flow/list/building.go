package list

import (
	"database/sql"
	"errors"
	"roomme/lib/constanta"
	"roomme/model"
	"strconv"
)

type FilterBuilding struct {
	BuildAudit      int         `json:"build_audit"`
	BuildingName    string      `json:"building_name"`
}

type BuildingListResponse struct {
	No                  int     `json:"no"`
	BuildId             int     `json:"build_id"`
	BuildName           string  `json:"build_name"`
	BuildTotalRoom      string  `json:"build_total_room"`
	OwnerPhone          string  `json:"owner_phone"`
	BuildKabupaten      string  `json:"build_kabupaten"`
	BuildAudit          string  `json:"build_audit"`
}

// Get Building List
func GetBuildingList(db *sql.DB, slug string, page int, limit int, filter FilterBuilding) (response SuccessResponse, err error){
	
	var building        model.BuildingList
	var arr_building    []model.BuildingList
	var whereSql        string
	var limitSql        string
	var params          []string
	var build_list_response []BuildingListResponse
	
	urlStatus := ""
	urlBuildingName := ""
	
	if filter.BuildAudit != constanta.AUDIT_ALL_STATUS {
		whereSql += " AND b.build_audit ="+strconv.Itoa(filter.BuildAudit)
		urlBuildingName = "&build_audit="+strconv.Itoa(filter.BuildAudit)
	}
	
	if filter.BuildingName != ""{
		whereSql += " AND b.build_name LIKE '%"+filter.BuildingName+"%'"
		urlBuildingName = "&build_name="+filter.BuildingName
	}
	
	if page > 0 && limit > 0 {
		offset := page -1
		limitSql = "LIMIT "+strconv.Itoa(limit)+" OFFSET "+strconv.Itoa(offset)
	}else{
		page = 1
		limit = 10
		limitSql = "LIMIT 10 OFFSET 0"
	}
	
	sqlString := "SELECT b.build_id," +
		"b.build_name," +
		"b.build_total_room," +
		"ow.owner_phone AS owner_phone," +
		"b.build_kabupaten, " +
		"b.build_audit "+
		"FROM building b  " +
		" LEFT JOIN owner ow ON b.build_id = ow.owner_building_id" +
		" WHERE 1 = 1 "+whereSql+
		" ORDER BY b.build_id desc "
	
	// query for total data
	rowsForCount, err := db.Query(sqlString)
	
	if err != nil{
		return response, err
	}
	
	//calculated count data
	countAllData := 0
	for rowsForCount.Next(){
		countAllData++
	}
	
	//query for limit and paging
	rows, err := db.Query(sqlString+limitSql)
	if err != nil {
		return response, errors.New("Data Not Found!")
	}
	
	for rows.Next() {
		rows.Scan(&building.BuildId,
			&building.BuildName,
			&building.BuildTotalRoom,
			&building.OwnerPhone,
			&building.BuildKabupaten,
			&building.BuildAudit)
		arr_building = append(arr_building,building)
	}
	
	rows.Scan(&arr_building)
	
	count := 1
	for _,data := range arr_building{
		var build BuildingListResponse
		build.No                    = count
		count++
		build.BuildId               = data.BuildId
		build.BuildName             = data.BuildName
		build.BuildTotalRoom        = data.BuildTotalRoom
		build.BuildKabupaten        = data.BuildKabupaten
		build.OwnerPhone            = data.OwnerPhone
		build.BuildAudit            = GetAuditStatusString(data.BuildAudit)
		
		build_list_response = append(build_list_response,build)
		
	}
	
	params = append(params,strconv.Itoa(page),strconv.Itoa(limit),urlStatus,urlBuildingName)
	response = getSuccessResponsePaging(slug,
		constanta.STATUS_OK,
		"array",
		build_list_response,
		len(build_list_response),
		countAllData,
		params)
	
	return response,nil
}


func GetAuditStatusString(audit_status int) (audit_string string){
	
	switch audit_status {
		case constanta.AUDIT_STATUS_COMPLETE:
			audit_string = "Audit Completed"
		break
		case constanta.AUDIT_STATUS_REPEATED:
			audit_string = "Audit Ulang"
		break
		default:
			audit_string = "Belum diaudit"
		break
	}
	
	return audit_string
}

//Get Building Detail
func GetBuildingDetail(db *sql.DB, slug string, build_id int)(response SuccessResponse, err error){
	var building        model.BuildingList
	//var doc             model.Document
	//var arr_doc         []model.Document
	//var audit_log       model.AuditLog
	//var arr_audit_log   []model.AuditLog
	//var roomType        model.Rooms
	//var arrRoomType     []model.Rooms
	var buildingDetail  model.BuildingDetail
	
	// query building
	db.QueryRow(" SELECT b.build_id," +
		" b.build_name," +
		" b.build_total_room," +
		" b.build_address," +
		" bf.build_staff_name," +
		" bf.build_staff_phone " +
		" FROM building b " +
		" LEFT JOIN build_staff bf ON bf.build_staff_build_id = b.build_id " +
		" where b.build_id = ?",build_id).
		Scan(&building.BuildId,
			&building.BuildName,
			&building.BuildTotalRoom,
			&building.BuildAddress,
			&building.BuildStaffname,
			&building.BuildStaffPhone,)
	
	
	buildingDetail.BuildingInfo = building
	response = getSuccessResponsePaging(slug,
		constanta.STATUS_OK,
		"object",
		buildingDetail,
		1,
		1,
		[]string{})
	
	//TODO : The others data
	
	return response,nil
}

//PUT Building Audit
func BuildingAudit(db *sql.DB, slug string, build_id int)(response SuccessResponse, err error){
	
	//TODO: Logic HERE
	
	return response,nil
}
