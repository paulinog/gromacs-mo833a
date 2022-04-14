# @file     check_build.sh
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

echo "[check_build]"

[[ -d build ]] &&\
  echo "> build is here" ||\
  echo "> not here :'(";
