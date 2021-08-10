function aws_mfa -d "Run AWS mfa if needed"

    aws s3 ls > /dev/null 2>&1

    if test $status -ne 0
        pushd .
        cd $THR_ROOT && bazel run //extras/aws-mfa-auth
        popd
    end
end
