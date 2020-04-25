package list

import (
	"database/sql"
	"errors"
	"roomme/lib/constanta"
	"roomme/model"
)

func GetBuildingList(db *sql.DB, slug string, params []string) (response SuccessResponse, err error){
	
	var building        model.Building
	var arr_building    []model.Building
	
	rows, err := db.Query("SELECT build_id,build_name," +
		"build_total_room,build_no_contact,build_kabupaten " +
		"FROM building ORDER BY id desc")
	if err != nil {
		return response, errors.New("Data Not Found!")
	}
	
	for rows.Next() {
		rows.Scan(&building.BuildId,&building.BuildName,&building.BuildTotalRoom,building.BuildNoContact,&building.BuildKabupaten)
		arr_building = append(arr_building,building)
	}
	
	rows.Scan(&arr_building)
	response = getSuccessResponsePaging(slug,constanta.STATUS_OK,"array",arr_building,len(arr_building),params)
	
	return response,nil
}
