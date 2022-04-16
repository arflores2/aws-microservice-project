#!/bin/bash

terraform -chdir=infra plan -out=output
