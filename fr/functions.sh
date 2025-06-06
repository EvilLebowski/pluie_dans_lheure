#!/bin/bash

jv_pg_pluie_dans_lheure() {
    local TOKEN="eyJ4NXQiOiJZV0kxTTJZNE1qWTNOemsyTkRZeU5XTTRPV014TXpjek1UVmhNbU14T1RSa09ETXlOVEE0Tnc9PSIsImtpZCI6ImdhdGV3YXlfY2VydGlmaWNhdGVfYWxpYXMiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJKZWZmTGVib3dza2lAY2FyYm9uLnN1cGVyIiwiYXBwbGljYXRpb24iOnsib3duZXIiOiJKZWZmTGVib3dza2kiLCJ0aWVyUXVvdGFUeXBlIjpudWxsLCJ0aWVyIjoiVW5saW1pdGVkIiwibmFtZSI6IkRlZmF1bHRBcHBsaWNhdGlvbiIsImlkIjoyNzQxNiwidXVpZCI6IjIwYTAzMWYxLTM5NWUtNDE3MC04YzVmLTI1ZGI1ZjcxODM0MyJ9LCJpc3MiOiJodHRwczpcL1wvcG9ydGFpbC1hcGkubWV0ZW9mcmFuY2UuZnI6NDQzXC9vYXV0aDJcL3Rva2VuIiwidGllckluZm8iOnsiNTBQZXJNaW4iOnsidGllclF1b3RhVHlwZSI6InJlcXVlc3RDb3VudCIsImdyYXBoUUxNYXhDb21wbGV4aXR5IjowLCJncmFwaFFMTWF4RGVwdGgiOjAsInN0b3BPblF1b3RhUmVhY2giOnRydWUsInNwaWtlQXJyZXN0TGltaXQiOjAsInNwaWtlQXJyZXN0VW5pdCI6InNlYyJ9LCI5MDBSZXFNaW4iOnsidGllclF1b3RhVHlwZSI6InJlcXVlc3RDb3VudCIsImdyYXBoUUxNYXhDb21wbGV4aXR5IjowLCJncmFwaFFMTWF4RGVwdGgiOjAsInN0b3BPblF1b3RhUmVhY2giOnRydWUsInNwaWtlQXJyZXN0TGltaXQiOjAsInNwaWtlQXJyZXN0VW5pdCI6InNlYyJ9fSwia2V5dHlwZSI6IlBST0RVQ1RJT04iLCJzdWJzY3JpYmVkQVBJcyI6W3sic3Vic2NyaWJlclRlbmFudERvbWFpbiI6ImNhcmJvbi5zdXBlciIsIm5hbWUiOiJBUk9NRSIsImNvbnRleHQiOiJcL3B1YmxpY1wvYXJvbWVcLzEuMCIsInB1Ymxpc2hlciI6ImFkbWluX21mIiwidmVyc2lvbiI6IjEuMCIsInN1YnNjcmlwdGlvblRpZXIiOiI1MFBlck1pbiJ9LHsic3Vic2NyaWJlclRlbmFudERvbWFpbiI6ImNhcmJvbi5zdXBlciIsIm5hbWUiOiJBUk9NRS1QSSIsImNvbnRleHQiOiJcL3B1YmxpY1wvYXJvbWVwaVwvMS4wIiwicHVibGlzaGVyIjoiYWRtaW5fbWYiLCJ2ZXJzaW9uIjoiMS4wIiwic3Vic2NyaXB0aW9uVGllciI6IjUwUGVyTWluIn0seyJzdWJzY3JpYmVyVGVuYW50RG9tYWluIjoiY2FyYm9uLnN1cGVyIiwibmFtZSI6IkFSUEVHRSIsImNvbnRleHQiOiJcL3B1YmxpY1wvYXJwZWdlXC8xLjAiLCJwdWJsaXNoZXIiOiJhZG1pbl9tZiIsInZlcnNpb24iOiIxLjAiLCJzdWJzY3JpcHRpb25UaWVyIjoiNTBQZXJNaW4ifSx7InN1YnNjcmliZXJUZW5hbnREb21haW4iOiJjYXJib24uc3VwZXIiLCJuYW1lIjoiUEUtQVJPTUUiLCJjb250ZXh0IjoiXC9wdWJsaWNcL3BlYXJvbWVcLzEuMCIsInB1Ymxpc2hlciI6Im11cmllbC5hdWJpbiIsInZlcnNpb24iOiIxLjAiLCJzdWJzY3JpcHRpb25UaWVyIjoiOTAwUmVxTWluIn1dLCJleHAiOjE4NDM4NzEzMjMsInRva2VuX3R5cGUiOiJhcGlLZXkiLCJpYXQiOjE3NDkxOTg1MjMsImp0aSI6ImIwOTg2Mzc2LTA2MTgtNDRjYi1hZTMyLTNhZTQxZmRkZmY2OSJ9.xAPvlz-XdDOf7EmOETShArAWb26lhB3SPJ2zzOIyrTGsV84aBeeqVSg3a7dDs3hq_NvlJK6NQ38BMczy_5NhD-GRSB1MPc8kHyQNhJOSxVsaRCDoqrQ1CPtb1I6bguLVWCwUlPDhEWn9niy1ZEky1TjhtTjzidmFIKGW_CKcKa3q7QsPranC9SHu4luP8V2yE1bXfBuuzpQtZFJ-4SEgEXARhr8R72Juk7w_ZxjQ-6A2qdNM6ZwQ_rPbLsksUJWVDOpp2rcYR7xPiblzWbO8301GeMVp0ZVJzmGaVwjQAgcW3GNTccY31AG27JPpb2lXnCyEIm6ptHJKdAasEFH0Rg=="
    local LAT="48.883331"
    local LON="2.26667"
    local GRIB="/tmp/pluie_neuilly.grib2"

    curl -s -H "Authorization: Bearer $TOKEN" \
      -o "$GRIB" \
      "https://public-api.meteofrance.fr/public/aromepi/1.0/wcs/MF-NWP-HIGHRES-AROMEPI-001-FRANCE-WCS/GetCoverage?service=WCS&version=1.0.0&request=GetCoverage&coverage=tp&crs=EPSG:4326&bbox=$LON,$LAT,$LON,$LAT&format=grib2"

    local result=$(python3 /chemin/vers/pluie_predict.py "$GRIB")

    jv_debug "Résultat pluie_predict : $result"

    case "$result" in
        "no_data")
            say "$(jv_pg_pluie_lang no_data)"
            ;;
        "already_raining")
            say "$(jv_pg_pluie_lang already_raining)"
            ;;
        "no_rain")
            say "$(jv_pg_pluie_lang no_rain)"
            ;;
        rain_in*)
            local minutes=$(echo $result | awk '{print $2}')
            say "$(jv_pg_pluie_lang rain_in $minutes)"
            ;;
        *)
            say "Je n'ai pas compris la prévision météo."
            ;;
    esac
    return 0
}
