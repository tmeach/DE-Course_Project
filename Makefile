include .env
export 


DBT_FOLDER = transform/de_camp
DBT_TARGET = dev


de-ingest:



de-transform:
	cd $$DBT_FOLDER && \
	dbt run \
		--target $$DBT_TARGET \
		--vars '{"start_date": "$(START_DATE)", "end_date": "$(END_DATE)"}'

de-transform-test:
	cd $$DBT_FOLDER && \
	dbt test