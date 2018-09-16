curl -X POST \
     -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
     -H "Content-Type: application/json; charset=utf-8" \
     --data "{
  'config': {
    'language_code': 'en-US'
  },
  'audio':{
    'uri':'gs://nn-bucket/test.flac'
  }
}" "https://speech.googleapis.com/v1/speech:longrunningrecognize"
