#
# ~/.bashrc
#

# If not running interactively, don't do anything
echo "Bienvenue $USER!"
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'

alias ll='ls -a -l'

alias c='clear'

export GREP_COLORS='mt=01;31'

alias grepc='grep --color=always'

alias grep='grep --color=auto'

DEFAULT_USER=$USER

#fonction pour ne pas afficher l'utilisateur actuel
definir_utilisateur()
{
	if [ $USER=DEFAULT_USER ]
	then
		export PS1='[\W]\$ '
	else
		export PS1='[\u@\h \W]\$ '
	fi
}

definir_utilisateur

#fonction pour faire une recherche insensible a la case avec grep
grep_ins() 
{ 
	command grep -i --color=always "$@" 
}

#fonction pour creer et ouvir un fichier avec neoVim
fichier_vim()
{
	local name="$1"
	if [ ! -e "$name" ]
	then
		if [[ "$name" == *.* ]]
		then
			touch "$name"
		else
			mkdir "$name"
		fi
	fi
	nvim "$name"
}

#copie tout les fichiers avec . dans le home en ignorant le . et ..
cp -r .??* ~/ 
cp -r .??* ~/.config

#ajouter le bin au path
export PATH="$HOME/bin:$PATH"
