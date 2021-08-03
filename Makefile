FILES:=.vimrc .gitconfig .bash_profile

all:$(FILES)
	. ${HOME}/.bash_profile

$(FILES):
	cp -rf $(HOME)/$@ dotfiles/$@.bak 
	cp -rf dotfiles/$@ ${HOME}/$@ 

clean:
	@echo "clean: idk yet.\nTODO: default config swap\n- .git-config.sample.\n- .debian_bash_profile.sample\n- .vimrc.sample?"
