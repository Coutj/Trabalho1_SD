setMode -bs
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
addDevice -p 1 -file "/home/juan/Documents/Sistemas_digitais/Projeto1/portOu.bit"
setCable -port auto
Program -p 1 -onlyFpga 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "/home/juan/Documents/Sistemas_digitais/aula1//auto_project.ipf"
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
