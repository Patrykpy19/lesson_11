#!/bin/bash

case $1 in
    dev) variable=dev_environment ;;
    stage) variable=stage_environment ;;
    prod) variable=prod_environment ;;

esac

cat > app.env << EOF
    echo "Argument: $1"
    echo "Variable: $variable"

EOF

cat > start.sh << 'EOF'
    echo "Argument: $1"
    echo "Variable: $variable"
EOF

chmod +x start.sh
