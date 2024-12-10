#!/bin/bash

# Build the site
echo "Building site..."
mkdocs build

# Get the bucket name from Terraform output
BUCKET_NAME=$(terraform output -raw website_bucket_name)

# Sync with S3
echo "Deploying to S3..."
aws s3 sync site/ "s3://${BUCKET_NAME}" --delete

# Invalidate CloudFront cache
echo "Invalidating CloudFront cache..."
DIST_ID=$(terraform output -raw distribution_id)
aws cloudfront create-invalidation --distribution-id "$DIST_ID" --paths "/*"

echo "Deployment complete!"
echo "Your site will be available at: $(terraform output -raw cloudfront_domain)"