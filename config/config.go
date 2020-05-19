package config

import (
	"github.com/kelseyhightower/envconfig"
)

type Config struct {
	Port   string `envconfig:"ROOMME_HTTP_PORT"`
	DBHost string `envconfig:"ROOMME_DB_HOST"`
	DBUser string `envconfig:"ROOMME_DB_USER"`
	DBPass string `envconfig:"ROOMME_DB_PASS"`
	DBName string `envconfig:"ROOMME_DB_NAME"`
}

func Get() Config {
	c := Config{}
	envconfig.MustProcess("", &c)
	return c
}