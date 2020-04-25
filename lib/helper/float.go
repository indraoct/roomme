package helper

import (
	"math"

	"github.com/shopspring/decimal"
)

func Round(num float64) int {
	return int(num + math.Copysign(0.5, num))
}

func ToFixed(num float64, precision int) float64 {
	output := math.Pow(10, float64(precision))
	return float64(Round(num * output)) / output
}

// Return a + b
func FloatAdd(a float64, b float64) float64 {
	rs, _ := decimal.NewFromFloat(a).Add(decimal.NewFromFloat(b)).Round(6).Float64()
	return rs
}

// Return a - b
func FloatSub(a float64, b float64) float64 {
	rs, _ := decimal.NewFromFloat(a).Sub(decimal.NewFromFloat(b)).Round(6).Float64()
	return rs
}

// Return a * b
func FloatMul(a float64, b float64) float64 {
	rs, _ := decimal.NewFromFloat(a).Mul(decimal.NewFromFloat(b)).Round(6).Float64()
	return rs
}

// Return a / b
func FloatDiv(a float64, b float64) float64 {
	rs, _ := decimal.NewFromFloat(a).Div(decimal.NewFromFloat(b)).Round(6).Float64()
	return rs
}