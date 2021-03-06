package controller

import (
	"database/sql"
	"encoding/json"
	"net/http"
	"roomme/lib/flow/list"
	"strconv"
)

//Building List [GET]
func BuildingList(db *sql.DB, w http.ResponseWriter, r *http.Request){
	
	if HTTPMethodMustBe("GET",w,r) == false{
		return
	}
	
	var filter list.FilterBuilding
	
	page,_      := strconv.Atoi(r.URL.Query().Get("page"))
	limit,_     := strconv.Atoi(r.URL.Query().Get("limit"))
	build_name  := r.URL.Query().Get("build_name")
	build_audit := r.URL.Query().Get("build_audit")
	
	filter.BuildingName     = build_name
	filter.BuildAudit,_     = strconv.Atoi(build_audit)
	
	response, err := list.GetBuildingList(db,"building/list",page,limit, filter)
	
	if err != nil{
		ResponseError(err,w,r)
		return
	}
	
	outputjson,_ := json.Marshal(response)
	
	w.Header().Set("Content-Type","application/json")
	w.WriteHeader(200)
	w.Write(outputjson)
	return
}

//Building Detail [GET]
func BuildingDetail(db *sql.DB, w http.ResponseWriter, r *http.Request){
	if HTTPMethodMustBe("GET",w,r) == false{
		return
	}
	
	build_id,_   := strconv.Atoi(r.URL.Query().Get("build_id"))
	response, err := list.GetBuildingDetail(db,"building/list",build_id)
	
	if err != nil{
		ResponseError(err,w,r)
		return
	}
	
	outputjson,_ := json.Marshal(response)
	
	w.Header().Set("Content-Type","application/json")
	w.WriteHeader(200)
	w.Write(outputjson)
	return
}

//Building Audit  [POST]
func BuildingAudit(db *sql.DB, w http.ResponseWriter, r *http.Request){
	
	if HTTPMethodMustBe("POST",w,r) == false{
		return
	}
	
	build_id,_   := strconv.Atoi(r.URL.Query().Get("build_id"))
	response, err := list.BuildingAudit(db,"building/list",build_id)
	
	if err != nil{
		ResponseError(err,w,r)
		return
	}
	
	outputjson,_ := json.Marshal(response)
	
	w.Header().Set("Content-Type","application/json")
	w.WriteHeader(200)
	w.Write(outputjson)
	return
}
