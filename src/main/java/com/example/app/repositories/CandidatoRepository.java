package com.example.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.app.model.entities.Candidato;

public interface CandidatoRepository extends JpaRepository<Candidato, Integer>{

}
