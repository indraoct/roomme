package model

type BuildingList struct {
	BuildId             int     `json:"build_id"`
	BuildName           string  `json:"build_name"`
	BuildTotalRoom      string  `json:"build_total_room"`
	BuildKabupaten      string  `json:"build_kabupaten"`
	BuildAudit          int     `json:"build_audit"`
	BuildAddress        string  `json:"build_address"`
	OwnerName           string  `json:"owner_name"`
	OwnerPhone          string  `json:"owner_phone"`
	BuildStaffname      string  `json:"build_staffname"`
	BuildStaffPhone     string  `json:"build_staff_phone"`
}

type Document struct{
	DocId               int     `json:"doc_id"`
	DocBuildId          int     `json:"doc_build_id"`
	DocOriginalName     string  `json:"doc_original_name"`
}

type AuditLog struct {
	AuditId             int     `json:"audit_id"`
	AuditBuildId        int     `json:"audit_build_id"`
	AuditAuditorName    string  `json:"audit_auditor_name"`
	AuditDate           string  `json:"audit_date"`
}

type Rooms struct { 
	RoomTypeId          int     `json:"room_type_id"`
	RoomTypeBuildId     int     `json:"room_type_build_id"`
	RoomTypeName        string  `json:"room_type_name"`
}

type BuildingDetail struct {
	BuildingInfo    BuildingList `json:"build_info"`
	DocumentInfo    []Document   `json:"document_info"`
	AuditInfo       []AuditLog   `json:"audit_info"`
	RoomInfo        []Rooms      `json:"room_info"`
}
