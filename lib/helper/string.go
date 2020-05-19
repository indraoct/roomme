package helper

import (
	"fmt"
	"math/rand"
	"regexp"
	"strconv"
	"strings"
	"time"
	"unicode"
)

var seededRand *rand.Rand = rand.New(
	rand.NewSource(time.Now().UnixNano()))

func StringRandomWithCharset(length int, charset string) string {
	b := make([]byte, length)
	for i := range b {
		b[i] = charset[seededRand.Intn(len(charset))]
	}
	return string(b)
}


func FormatToCurrency(n int) string {
	var s []string
	is := fmt.Sprintf("%d", n)

	for i := len(is); i > 0; i -= 3 {
		switch {
		case i >= 3:
			s = append([]string{is[i-3 : i]}, s...)
		case i < 3:
			s = append([]string{is[:i]}, s...)
		}
	}

	return strings.Join(s, ".")
}

func WhiteSpaceRemove(str string) string {
	return strings.Map(func(r rune) rune {
		if unicode.IsSpace(r) {
			return -1
		}
		return r
	}, str)
}

func FloatToString(f float64) string {
	return strconv.FormatFloat(f,'f',-1,64)
}

func ReplaceDotToComma(s string) string {
	return strings.Replace(s,".",",",-1)
}

// 0.2 -> 0,2
func GramFloatToString(f float64) string {
	return ReplaceDotToComma(FloatToString(f))
}

// CleanHPNo reformats a string which is considered as a phone no operating in indonesia only (hence the reformat to add prefix 62)
// BUT due to questionable design in login flow, the "hp" from param can also be an email address, in which case this must not be modified at all
// so the function uses additional logic by checking if the input is all numbers, if it is, then it is a phone number and can be reformatted, else it's an email address, don't modify it
func CleanHPNo (hp string) string {
	matched, _ := regexp.Match("^[0-9]+$", []byte(hp)) //ignored err, unlikely to occur

	if matched { //hp is all numbers, treat as phone number, reformat it
		hp = strings.Replace(hp, " ", "", -1)
		hp = strings.Replace(hp, "+", "", -1)
		hp = strings.Replace(hp, "-", "", -1)
		if hp[:1] == "0" {
			hp = "62"+ hp[1:]
		} else if hp[:2] != "62" {
			hp = "62"+ hp
		}
	}
	return hp
}

func IntJoin(arr []int, delim string) string {
	return strings.Trim(strings.Join(strings.Fields(fmt.Sprint(arr)), delim), "[]")
}