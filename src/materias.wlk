class Estudiante{
	var aprobacion = []
//	var property nombre 
//	method agregarEstudiante(nombre){
//		estudiante.add({nombre})
//	}
	method registrarAprobacion(laMateria,laNota){
		var apr = new Aprobacion()
		apr.nota(laNota)
		apr.materia(laMateria)
		
		aprobacion.add(apr)
	}
	
	method cantidadMateriasAprobada(){
		
	}
	
}

class Aprobacion{
	var property nota
	var property materia
	
	
}
class Materias{
	var property nombre
	
	
}


//termina todo


