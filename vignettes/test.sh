#!/usr/bin/env bash

(cd one_sample_location && dsc first_investigation.dsc && dsc first_investigation_simpler.dsc && dsc first_investigation_with_scripts.dsc && dsc simulate_multiple_dfs.dsc) && \
	(cd one_sample_location_python && dsc settings.dsc)

echo "Clean up"

(cd one_sample_location && dsc -d all first_investigation.dsc && dsc -d all first_investigation_simpler.dsc && dsc -d all first_investigation_with_scripts.dsc && dsc -d all simulate_multiple_dfs.dsc) && \
	(cd one_sample_location_python && dsc -d all settings.dsc)
