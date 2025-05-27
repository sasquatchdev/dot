# sasquatchdev/dot

A collection of my dotfiles.

## installation

To install and use my configurations, you'll first need to clone this repository:

```bash
git clone https://github.com/sasquatchdev/dot.git ~/dot
```

Next, you can `cd` into the cloned directory and use [GNU Stow](https://www.gnu.org/software/stow/)
to apply the configurations:

```bash
cd ~/dot && stow [TOOL]
```

If you already have a configuration for your desired tool, simply run

```bash
mv ~/.config/tool ~/.config/tool.bak && stow tool
```

to backup the tool first (make sure to change `~/.config/tool` to the actual location of the 
tool's configuration)
