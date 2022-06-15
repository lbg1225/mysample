package com.sample.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import com.sample.domain.Item;

@RepositoryRestResource(collectionResourceRel="items", path="items")
public interface ItemRepository extends PagingAndSortingRepository<Item, Long>{
}
