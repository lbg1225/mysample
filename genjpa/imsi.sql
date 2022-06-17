DROP TABLE IF EXISTS `aud_adt_info_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_info_rcp` (
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_hhmm` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `adt_bsns_dsccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사업무식별코드',
  `adt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사직원번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객주민번호',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `bjamt` decimal(15,0) DEFAULT NULL COMMENT '대상금액',
  `impdg_poct` decimal(10,0) DEFAULT NULL COMMENT '중요도점수',
  `adt_rcp_link_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사접수연결구분코드',
  `link_kyvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연결키값',
  `cr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생직원번호',
  `cr_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생내역',
  `sms_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송여부',
  `adt_info_dlst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사정보처리상태구분코드',
  `dl_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리내용',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `dl_hhmm` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리시분',
  `bsns_1_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무1담당직원번호',
  `bsns_2_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무2담당직원번호',
  `bsns_3_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무3담당직원번호',
  `bsns_4_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무4담당직원번호',
  `wst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '폐기여부',
  `adt_info_pout_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사정보특이사항구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcpdt`,`rcp_hhmm`,`rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사정보접수';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_adt_info_rcp_cr_dt`
--

DROP TABLE IF EXISTS `aud_adt_info_rcp_cr_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_info_rcp_cr_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_hhmm` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `adt_bsns_dsccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사업무식별코드',
  `cr_dt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_adt_info_rcp_cr_dt_00` (`rcpdt`,`rcp_hhmm`,`rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사정보접수발생상세';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_adt_knwl_adm`
--

DROP TABLE IF EXISTS `aud_adt_knwl_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_knwl_adm` (
  `adt_knwl_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사지식업무구분코드',
  `adt_knwl_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사지식중분류코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명',
  `dtit_chek_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부항목체크명',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `clodt` date DEFAULT NULL COMMENT '폐쇄일자',
  `wrt_dep_chek_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성부서체크값',
  `adx_1_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일경로',
  `adx_2_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일경로',
  `adx_3_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부3파일경로',
  `adx_4_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부4파일경로',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_knwl_bsns_flgcd`,`adt_knwl_mdccd`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사지식관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_adt_lc`
--

DROP TABLE IF EXISTS `aud_adt_lc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_lc` (
  `adt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년도',
  `adt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사구분코드',
  `adtno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사번호',
  `adt_knd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사종류구분코드',
  `adt_ty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사형태구분코드',
  `adtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사명',
  `adt_xec_strdt` date DEFAULT NULL COMMENT '감사실시시작일자',
  `adt_xec_nddt` date DEFAULT NULL COMMENT '감사실시종료일자',
  `adt_bj_strdt` date DEFAULT NULL COMMENT '감사대상시작일자',
  `adt_bj_nddt` date DEFAULT NULL COMMENT '감사대상종료일자',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_yr`,`adt_flgcd`,`adtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사착수';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_adt_prg_spc`
--
