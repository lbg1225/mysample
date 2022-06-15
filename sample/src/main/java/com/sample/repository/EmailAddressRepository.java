package com.sample.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import com.sample.domain.EmailAddress;

@RepositoryRestResource(collectionResourceRel="emailaddresss", path="emailaddresss")
public interface EmailAddressRepository extends PagingAndSortingRepository<EmailAddress, Long>{
}
