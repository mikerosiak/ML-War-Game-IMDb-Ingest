/mlcp/bin/mlcp.bat import ^
                  -mode local ^
                  -host localhost ^
                  -port 8000 ^
                  -username admin ^
                  -password admin ^
                  -input_file_path "../Data/IMDb movies.csv" ^
                  -input_file_type delimited_text ^
                  -document_type json ^
                  -database Documents ^
                  -uri_id imdb_title_id ^
                  -output_uri_prefix /title/ ^
                  -output_uri_suffix .json ^
                  -thread_count 8 ^
                  -batch_size 200




