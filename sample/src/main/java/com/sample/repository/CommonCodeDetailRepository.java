package com.sample.repository;

import com.sample.domain.CommonCodeDetail;
import com.sample.domain.CommonCodeDetailPK;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "commoncodedetails", path = "commoncodedetails")
public interface CommonCodeDetailRepository extends PagingAndSortingRepository<CommonCodeDetail, CommonCodeDetailPK>{ //Entity 클래스, PK 타입
}