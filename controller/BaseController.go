package controller

import (
	"encoding/json"
	"net/http"
	"roomme/lib/constanta"
	"roomme/lib/flow/list"
	"roomme/lib/helper"
)

func HTTPMethodMustBe(method string, w http.ResponseWriter,r *http.Request)(boolean bool){
	
	if r.Method != method {
		responseError := list.ErrorResponse{ErrorCode: constanta.STATUS_FORBIDDEN,
			ErrorMessage: "Invalid Method", Timestamp: helper.GetNowTime()}
		outputJson, _ := json.Marshal(responseError)
		
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(constanta.STATUS_OK)
		w.Write([]byte(outputJson))
		
		return false
	}
	
	return  true
}


func ResponseError(err error, w http.ResponseWriter,r *http.Request){
	
	responseError := list.ErrorResponse{ErrorCode: constanta.STATUS_ERROR,
		ErrorMessage: err.Error(), Timestamp: helper.GetNowTime()}
	outputJson, _ := json.Marshal(responseError)
	
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(constanta.STATUS_OK)
	w.Write([]byte(outputJson))
}