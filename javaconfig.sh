echo "Bem-Vindo ao instalador automático JAVA"

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Falta parametros."
else
  echo "Adicionando PATH"
  if ! type "$java" > /dev/null || type "$javac" > /dev/null; then
    echo "export PATH=$PATH:$1:$2" >> ~/.bashrc
    echo "JAVA Configurado."
  else
    echo "JRE ou JDK já instalados"
  fi
fi
