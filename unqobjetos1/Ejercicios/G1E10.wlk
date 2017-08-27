object prototipo{
	
	var rpm =0
	var cambio=0
	
	method arrancar(){
		rpm=500
		cambio=1
	}
	method subirCambio(){
		cambio=cambio+1
	}
	method bajarCambio(){
		cambio=cambio-1	
	}
	method subirRPM(cuantos){
		rpm=rpm+cuantos
	}
	method bajarRPM(cuantos){
		rpm=rpm-cuantos
	}
	method velocidad(){
		return  (rpm / 100) * (0.5 + (cambio / 2))
	}
	
	method consumoPromedio(){
		var base=0.05
		if (rpm>3000){
			base=base * (rpm-2500)/500
		}	
		if (cambio==1){
			base=base*3
		}
		if (cambio==2){
			base=base*2
		}
		return base
	}
}

