package helper

import (
	"reflect"
	"strings"
)

func InArray(val interface{}, array interface{}) (exists bool, index int) {
	exists = false
	index = -1

	switch reflect.TypeOf(array).Kind() {
		case reflect.Slice:
			s := reflect.ValueOf(array)

			for i := 0; i < s.Len(); i++ {
				if reflect.DeepEqual(val, s.Index(i).Interface()) == true {
					index = i
					exists = true
					return
				}
			}
	}

	return
}

func InArrayNoIndex(val interface{}, array interface{}) bool {
	exists := false

	switch reflect.TypeOf(array).Kind() {
	case reflect.Slice:
		s := reflect.ValueOf(array)

		for i := 0; i < s.Len(); i++ {
			if reflect.DeepEqual(val, s.Index(i).Interface()) == true {
				exists = true
				return exists
			}
		}
	}

	return exists
}

func InArrayContains(val string, checkArray []string) bool {
	for _, check := range checkArray  {
		if strings.Contains(val, check) {
			return true
		}
	}
	return false
}

func InArrayContainsInt(val int, checkArray []int) bool {
	for _, check := range checkArray  {
		if val == check {
			return true
		}
	}
	return false
}