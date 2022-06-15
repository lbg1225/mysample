package com.sample.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import com.sample.domain.Address;

@RepositoryRestResource(collectionResourceRel="addresss", path="addresss")
public interface AddressRepository extends PagingAndSortingRepository<Address, Integer>{
}
