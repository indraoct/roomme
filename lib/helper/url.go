package helper

import (
	"net/http"
	"time"
	"encoding/json"
	"encoding/xml"
	"io/ioutil"
	"io"
)

// Helper to extract json data
func GetJson(url string, target interface{}) error {
	myClient := &http.Client{Timeout: 30 * time.Second}

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return err
	}
	req.Header.Set("Connection", "close")
	//req.Close = true

	r, err := myClient.Do(req)
	if err != nil {
		return err
	}
	//defer r.Body.Close()
	defer func() {
		io.Copy(ioutil.Discard, r.Body)
		r.Body.Close()
	}()

	return json.NewDecoder(r.Body).Decode(target)
}

// Helper to extract xml data
func GetXml(url string, target interface{}) error {
	myClient := &http.Client{Timeout: 30 * time.Second}

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return err
	}
	req.Header.Set("Connection", "close")
	//req.Close = true

	r, err := myClient.Do(req)
	if err != nil {
		return err
	}
	defer r.Body.Close()

	return xml.NewDecoder(r.Body).Decode(target)
}