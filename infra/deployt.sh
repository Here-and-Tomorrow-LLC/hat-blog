#!/bin/bash

# Build the site
echo "Building site..."
mkdocs build

# Sync with S3
echo "Deploying to S3..."
aws s3 sync site/ s3://hereandtomorrow.com --delete

# Invalidate CloudFront cache
echo "Invalidating CloudFront cache..."
aws cloudfront create-invalidation --distribution-id $(terraform output -raw cloudfront_distribution_id) --paths "/*"

echo "Deployment complete!"