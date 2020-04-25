package list

import (
	"math"
	"strconv"
	"strings"
	"time"
	"roomme/lib/helper"
)

type SuccessResponse struct {
	Code 		int			`json:"code"`		// http code for easier read, must be the same with HEADER
	Status      string      `json:"status"`
	Message     string      `json:"message"`
	Type 		string		`json:"type"`		// return type, array or object
	Data 		interface{}	`json:"data"`		// can be an array of object or single object
	FirstPage 	string 		`json:"first_page"`	// first page if type = array
	LastPage 	string 		`json:"last_page"`	// last page if type = array
	NextPage 	string 		`json:"next_page"`	// next page if type = array
	Page        int      `json:"page"`
	TotalData   int			`json:"total_data"`		// total data
	TotalPage   int			`json:"total_page"`		// total data
	Timestamp 	time.Time	`json:"timestamp"`	// current timestamp
}

type ErrorResponse struct {
	ErrorCode 		int			`json:"error_code"`
	ErrorMessage 	string		`json:"error_message"`
	ErrorData 		interface{}	`json:"error_data"`
	Timestamp 		time.Time	`json:"timestamp"`
}

func getSuccessResponsePaging(slug string,code int, tipe string, data interface{},length_current_date int, total_data int, params []string) SuccessResponse{
	
	page, _  := strconv.Atoi(params[0])
	limit, _ := strconv.Atoi(params[1])
	s := SuccessResponse{}
	s.Code 		= code
	s.Type 		= tipe
	s.Data 		= data
	s.TotalData = total_data
	s.Page      = page
	s.TotalPage = int(math.Ceil(helper.FloatDiv(float64(total_data),float64(length_current_date))))
	s.NextPage 	= ""
	s.FirstPage = ""
	s.LastPage	= ""
	
	// URL for Pagination
	if len(params) > 0 {
		baseUrl := "http://localhost:9000/"+slug+"?"
		lp := math.Ceil(float64(total_data)/float64(limit))
		np := page + 1
		
		// Delete page and limit params
		params = append(params[:0], params[2:]...)
		if np > page && np <= int(lp) {
			s.NextPage = baseUrl +"limit="+ strconv.Itoa(limit) +"&page="+ strconv.Itoa(np) + strings.Join(params,"")
		}
		
		s.FirstPage = baseUrl +"limit="+ strconv.Itoa(limit) +"&page="+ strconv.Itoa(1) + strings.Join(params,"")
		if lp != 0 {
			s.LastPage  = baseUrl +"limit="+ strconv.Itoa(limit) +"&page="+ strconv.FormatFloat(lp, 'f', -1, 64) + strings.Join(params,"")
		}
	}
	
	s.Timestamp = helper.GetNowTime()
	
	return s
}

