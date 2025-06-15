 #!/bin/bash
 terraform apply -auto-approve
 JENKINS_URL=$(terraform output -raw jenkins_url)
 if [[ "$OSTYPE" == "linux-gnu"* ]]; then
   xdg-open "$JENKINS_URL"
 elif [[ "$OSTYPE" == "darwin"* ]]; then
   open "$JENKINS_URL"
 elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
  start "$JENKINS_URL"
fi