
object categoriaCadete{
	var neto=20000
	
	method neto(){
		//Retorna el neto para la categoria		
		return neto
	}
}
object categoriaGerente{
	var neto=15000
	
	method neto(){
		//Retorna el neto para la categoria
		return neto
	}
}

object sindicatoPorcentual{
	method descuento(sueldo){
		//Retorna el descuento por el tipo sindicato en funcion la sueldo
		return sueldo*0.03
	}
}

object sindicatoComprometido{
	method descuento(sueldo){
		//Retorna el descuento por el tipo sindicato en funcion la sueldo		
		return sueldo*0.01+1500
	}
} 

object noSindicato{
	method descuento(sueldo){
		//Retorna el descuento por el tipo sindicato
		return 0
	}
}  


object presentismoNormal{
	method bono(sueldo,diasAusente){
		//Retorna el plus segun el sueldo y los dias de ausencia dados 
		var bono=0
		if (diasAusente==0){
			bono=2000
		}else if (diasAusente==1){
			bono=1000
		}else{
			bono=0
		}
		return bono
	}			
}
object presentismoAjuste{
	method bono(sueldo,diasAusente){
		//Retorna el plus segun el sueldo y los dias de ausencia dados 
		var bono=0
		if (diasAusente==0){
			bono=10
		}else{
			bono=0
		}
		return bono
	}		
}
object presentismoDemagogico{
	method bono(sueldo,diasAusente){
		var bono=0
		if (sueldo<18000){
			bono=500
		}else{
			bono=350
		}
		return bono
	}
}

object pepe{
	//inicialmente diremos que Pepe tiene categoria Cadete y no esta sindicalizado
	//Como el presentismo no viene dado inicialmente segun el enunciado entonces tenemos precondicion...
	
	//Precondicion: Debe indicarse el presentismo para que pueda calcularse 
	//el bono correspondiente.
	
	var categoria=categoriaCadete
	var sindicato=noSindicato
	var presentismo
	var diasAusente=0
	
	method cambiarCategoria(c){
		//Proposito: Cambia la categoria tomando la nueva categoria como parametro "c"  
		categoria=c
	}
	
	method cambiarSindicato(s){
		//Proposito: Cambia el sindicato tomando el nuevo sindicato como parametro "s"  
		sindicato=s
	}

	method cambiarPresentismo(p){
		//Proposito: Cambia el tipo de presentismo tomando el nuevo como parametro "p"
		presentismo=p
	}
	
		
	method faltas(dias){
		//Proposito: Indica la cantidad de dias ausente de Pepe
		diasAusente=dias
	}

	
	method sueldo(){
		//Retorna el sueldo de Pepe
		return categoria.neto()-sindicato.descuento(categoria.neto())+presentismo.bono(categoria.neto(),diasAusente)
	}
}