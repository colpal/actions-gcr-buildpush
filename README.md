# Build and push docker image to Google Container Registry action

Github workflow action to build a docker image from Dockerfile
and push the image to Google Continer Registry adding appropriate tags.

Passes all sensitive data using secrets.

## Inputs

### `gcr_service_account`

#### Google Container Registry service account

A credentials file containing for the service account to be used to push to the repository

### `gcr_host`

#### Google Container Registry Host

- us.gcr.io (default)
- gcrp.io
- etc

### `gcr_project`

#### Google Container Registry project

The name of the project which contains the desired repository

### `gcr_repo`

#### Google Container Registry Repository

The repository path in GCR

example: my_repo_folder/ 

from us.gcr.io/my_project/my_repo_folder/my_image

### `gcr_image_name`

#### Google Container Registry image name

Name of the image once it's pushed to the repository. Should be specified without domain and project.

### `dockerfile_path`

#### Dockerfile path

Path that contains 'Dockerfile' in you github project

### `image_tag`

A tag to be added once to the image. By default the GitHub hash.

This action also places the latest tag on whatever image is pushed

## Example usage

```ylm
uses: colpal/actions-gcr-buildpush
    with: 
    gcr_service_account: ${{ secrets.GCR_GCP_CREDENTIALS }}
    gcr_project: 'my_project'
    gcr_repo: 'my_repo/'
    gcr_image_name: 'my_image'
```
