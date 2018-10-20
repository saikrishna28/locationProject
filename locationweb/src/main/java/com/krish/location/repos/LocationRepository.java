package com.krish.location.repos;


import org.springframework.data.jpa.repository.JpaRepository;

import com.krish.location.entities.Location;

public interface LocationRepository extends JpaRepository<Location, Integer> {

}
