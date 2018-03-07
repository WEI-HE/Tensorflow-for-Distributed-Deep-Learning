gcloud ml-engine jobs submit training $JOB_NAME \
        --stream-logs \
        --package-path $TRAINER_PACKAGE_PATH \
        --module-name $MAIN_TRAINER_MODULE \
        --job-dir $JOB_DIR \
        --runtime-version $RUNTIME_VERSION \
        --region $REGION \
        --config $CONFIG \
        --verbosity debug \
        --scale-tier $SCALE_TIER \
        -- \
        --traindir $TRAINDIR \
        --evaldir $EVALDIR \
        --bucket $BUCKET \
        --outputdir $OUTPUTDIR \
        --batchsize 300 \
        --epochs 1 \
        --hidden_units '64,12' \
        --feat_eng_cols 'ON'