let g:user_emmet_settings = {
    \  'variables': {'lang': 'zh-CN'},
    \  'html': {
    \    'default_attributes': {
    \      'option': {'value': v:null},
    \      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
    \    },
    \    'snippets': {
    \      'html:5': "<!DOCTYPE html>\n"
    \              ."<html lang=\"${lang}\">\n"
    \              ."<head>\n"
    \              ."\t<meta charset=\"${charset}\">\n"
    \              ."\t<title></title>\n"
    \              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
    \              ."\t<style>\n"
    \              ."\t\t.clearfix:before,\n\t\t.clearfix:after {\n"
    \              ."\t\t\tcontent: \"\";\n"
    \              ."\t\t\tdisplay: table;\n\t\t}\n"
    \              ."\t\t.clearfix:after {\n"
    \              ."\t\t\tclear: both;\n\t\t}\n"
    \              ."\t</style>\n"
    \              ."</head>\n"
    \              ."<body>\n\t${child}|\n</body>\n"
    \              ."</html>",
    \    },
    \  },
    \}
