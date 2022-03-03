function aws_mfa -d "Run AWS mfa if needed"

    aws s3 ls > /dev/null 2>&1

    # Don't run when not interactive because user can't enter mfa token anyway and it breaks stuff
    if test $status -ne 0 
        status --is-interactive
        if test $status -eq 0
            pushd .
            cd $THR_ROOT && bazel run //extras/aws-mfa-auth
            popd
        end
    end
end
