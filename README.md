# Routed Pipes Pack

A Tekkit of today around [Routed Pipes](https://github.com/routed-pipes/routed-pipes): Mekanism, Project Red,
ComputerCraft, Railcraft, AE2, Ender Storage, ProjectE and friends on Minecraft 1.21.1 with NeoForge.
Your launcher pulls the changes on every start.

Server: `mc-tech.lila.wtf`

## Install

You need [Prism Launcher](https://prismlauncher.org) with your Minecraft account added.

1. Add Instance -> Import
2. Paste `https://github.com/routed-pipes/pack/releases/latest/download/routed-pipes-pack.zip`
3. Launch

That is it. Mods are downloaded and updated each time you press Launch. The instance asks for 8 GB of memory,
lower it in the instance settings if your machine has less.

Your own extra mods in the `mods` folder are left alone.

## What is in it

- Tech: Mekanism, Immersive Engineering, Create, Industrial Foregoing, Powah, Extreme Reactors, Draconic Evolution
- Tekkit classics: Project Red, CC: Tweaked, Railcraft Reborn, AE2, Ender Storage, MFFS, ProjectE, Iron Chests
- One kind of every metal: Almost Unified, and the ores other mods repeat are turned off
- A starting kit on your first join

Routed Pipes is based on the design of Logistics Pipes by Krapht and the RS485 team and uses its original
textures under the MMPL. It is not affiliated with or endorsed by them.

## Maintaining

This repository is written by `scripts/export-packwiz.sh` in the Routed Pipes repository, do not edit `mods/`,
`config/`, `index.toml` or `pack.toml` by hand. The mod list is `pack/mods.txt` over there.

`./build-instance.sh` builds the instance zip for the release. It only needs a rebuild when `instance/` changes
or the pack moves to another NeoForge version.
