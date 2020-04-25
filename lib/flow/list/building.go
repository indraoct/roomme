package list

import (
	"database/sql"
	"errors"
	"roomme/lib/constanta"
	"roomme/model"
	"strconv"
)

type FilterBuilding struct {

}

func GetBuildingList(db *sql.DB, slug string, page int, limit int, filter FilterBuilding) (response SuccessResponse, err error){
	
	var building        model.BuildingList
	var arr_building    []model.BuildingList
	var whereSql        string
	var limitSql        string
	var params          []string
	
	if page > 0 && limit > 0 {
		offset := page -1
		limitSql = "LIMIT "+strconv.Itoa(offset)+","+strconv.Itoa(limit)
	}else{
		page = 1
		limit = 10
		limitSql = "LIMIT 0,10"
	}
	
	
	rows, err := db.Query("SELECT b.build_id," +
		"b.build_name," +
		"b.build_total_room," +
		"ow.owner_phone AS owner_phone," +
		"b.build_kabupaten " +
		"FROM building b  " +
		" LEFT JOIN owner ow ON b.build_id = ow.owner_building_id" +
		" WHERE 1 = 1 "+whereSql+
		" ORDER BY b.build_id desc "+limitSql)
	if err != nil {
		return response, errors.New("Data Not Found!")
	}
	
	for rows.Next() {
		rows.Scan(&building.BuildId,
			&building.BuildName,
			&building.BuildTotalRoom,
			&building.OwnerPhone,
			&building.BuildKabupaten)
		arr_building = append(arr_building,building)
	}
	
	rows.Scan(&arr_building)
	
	params = append(params,strconv.Itoa(page),strconv.Itoa(limit))
	response = getSuccessResponsePaging(slug,constanta.STATUS_OK,"array",arr_building,len(arr_building),params)
	
	return response,nil
}
