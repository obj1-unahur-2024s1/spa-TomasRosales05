

object bruno{
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasajes(){
		estaFeliz = true
	}
	method darseBanioDeVapor(){
		peso = peso - 500
		tieneSed = true 
	}
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso = peso + 250
		tieneSed = true
	}
	method correr(){
		peso = peso - 300
	}
	method verNoticiero(){
		estaFeliz = false
	}
	
	method estaPerfecto(){
		return (estaFeliz == true and tieneSed == false and peso.between(50,70))
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object olivia {
	var concentracion = 6
	
	method recibirMasajes(){
		concentracion = concentracion + 3
	}
	method discutir(){
		concentracion = concentracion - 1
	}
	method gradoDeConcentracion(){
		return concentracion
	}
	
	method darseBanioAVapor(){
		
	}
}

object ramiro {
	var nivelDeContracturado = 3
	var tienePielGrasosa = true
	
	method recibirMasajes(){
		nivelDeContracturado = nivelDeContracturado - 2
		nivelDeContracturado = nivelDeContracturado.max(0)
	} 
	
	method darseBanioDeVapor(){
		tienePielGrasosa = false
	}
	method comerBigMac(){
		tienePielGrasosa = true
	}
	method bajarALaFosa(){
		nivelDeContracturado = nivelDeContracturado + 1
		tienePielGrasosa = true
	}
	
	method jugarAlPaddle(){
		nivelDeContracturado = nivelDeContracturado + 3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}

object spa {
	method atenderPersona(unaPersona){
		unaPersona.recibirMasajes()
		unaPersona.darseBanioAVapor()
	}
}