package model

type BuildingList struct {
	BuildId             int     `json:"build_id"`
	BuildName           string  `json:"build_name"`
	BuildTotalRoom      string  `json:"build_total_room"`
	OwnerPhone          string  `json:"owner_phone"`
	BuildKabupaten      string  `json:"build_kabupaten"`
}
