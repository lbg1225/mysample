package com.sample.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import com.sample.domain.PurchaseOrder;

@RepositoryRestResource(collectionResourceRel="purchaseorders", path="purchaseorders")
public interface PurchaseOrderRepository extends PagingAndSortingRepository<PurchaseOrder, Long>{
}
