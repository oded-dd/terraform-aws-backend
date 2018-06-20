{
    "Id": "BackendBucketPolicy",
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "StmtBucket",
            "Action": [
                "s3:ListBucket"
            ],
            "Effect": "Allow",
            "Resource": "${arn}",
            "Principal": {
              "AWS" : [ "${principal}" ]
            }
        },
        {
            "Sid": "StmtObject",
            "Action": [
                "s3:GetObject",
                "s3:PutObject"
            ],
            "Effect": "Allow",
            "Resource": "${arn}/*",
            "Principal": {
              "AWS": [ "${principal}" ]
            }
        }
    ]
}
