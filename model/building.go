package model

type Building struct {
	BuildId             int     `json:"build_id"`
	BuildName           string  `json:"build_name"`
	BuildTotalRoom      string  `json:"build_total_room"`
	BuildNoContact      string  `json:"build_no_contact"`
	BuildKabupaten      string  `json:"build_kabupaten"`
}
