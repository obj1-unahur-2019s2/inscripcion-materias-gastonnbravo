class Estudiante{
	var aprobacion = []
	var carreras = []
	var materiaInscripta = []
//	var property nombre 
//	method agregarEstudiante(nombre){
//		estudiante.add({nombre})
//	}




	method estaCursando(){
		return carreras.asSet()
	}

	method registrarAprobacion(laMateria,laNota){
		var apr = new Aprobacion()
		apr.nota(laNota)
		apr.materia(laMateria)
		
		aprobacion.add(apr)
	}
	method registrarAprobacion2(materia,nota){
		if(not aprobacion.any({aprob => aprob.materia() == materia}) ){
			aprobacion.add(new Aprobacion(nota= nota,materia = materia))
		}
		else {self.error("ya esta aprobada")}
	}
	method materiaDeCarrerasInscripto(){
		//2 FORMAS
		// return carreras.flatMap({carr => carr.materias()})
		return carreras.map({carr => carr.materias()}).flatten()
	
	}
	method estaAprobado(materia){
		return aprobacion.any({aprob => aprob.materia() == materia})
	}
	
	
	method cantidadDeMateriaAprobadas(){
		return aprobacion.size()
	}
	method promedio(){
		return aprobacion.sum({aprob => aprob.nota()/self.cantidadDeMateriaAprobadas()})
	}
	
	
	method puedeInscribirseMateria(materia){
		return self.aprobadoLaMateria(materia) 
		and self.alumnoEstaInscripto(materia)
		and self.materiaRequisitos(materia)
			
		
	}
	
	
	
	
	
	
	method inscribirseMateria(materia){
	 	carreras.add(materia)
	}
	//ctrl + espacio para completar
	method aprobadoLaMateria(materia){
		return not self.estaAprobado(materia)
	}
	method alumnoEstaInscripto(materia){
		return not carreras.any(materia)
	}
	method materiaRequisitos(materia){
		return carreras.forEach({aprob => aprob.estaAprobado(materia)})
	}
	
	
	
	
	
}

class Aprobacion{
//se necesita esta clase para guardar la nota y la materia.
//esto lo voy a guardar en estudiante
	var property nota
	var property materia
	
	
}
class Materias{
	var property nombre
	var property materiaRequisitos
	
	
}


//termina todo

object programacion{}
object medicina{}
object derecho{}
