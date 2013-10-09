Admin::Setting.all.map{ |option| 
	ENV[option.option_name] = option.option_value
}