/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/service/load_stats/v3/lrs.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#ifndef ENVOY_SERVICE_LOAD_STATS_V3_LRS_PROTO_UPBDEFS_H_
#define ENVOY_SERVICE_LOAD_STATS_V3_LRS_PROTO_UPBDEFS_H_

#include "upb/def.h"
#include "upb/port_def.inc"
#ifdef __cplusplus
extern "C" {
#endif

#include "upb/def.h"

#include "upb/port_def.inc"

extern upb_def_init envoy_service_load_stats_v3_lrs_proto_upbdefinit;

UPB_INLINE const upb_msgdef *envoy_service_load_stats_v3_LoadStatsRequest_getmsgdef(upb_symtab *s) {
  _upb_symtab_loaddefinit(s, &envoy_service_load_stats_v3_lrs_proto_upbdefinit);
  return upb_symtab_lookupmsg(s, "envoy.service.load_stats.v3.LoadStatsRequest");
}

UPB_INLINE const upb_msgdef *envoy_service_load_stats_v3_LoadStatsResponse_getmsgdef(upb_symtab *s) {
  _upb_symtab_loaddefinit(s, &envoy_service_load_stats_v3_lrs_proto_upbdefinit);
  return upb_symtab_lookupmsg(s, "envoy.service.load_stats.v3.LoadStatsResponse");
}

#ifdef __cplusplus
}  /* extern "C" */
#endif

#include "upb/port_undef.inc"

#endif  /* ENVOY_SERVICE_LOAD_STATS_V3_LRS_PROTO_UPBDEFS_H_ */