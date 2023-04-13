# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    dwarfswitch.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: llion <llion@student.42mulhouse.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/23 13:14:46 by llion             #+#    #+#              #
#    Updated: 2023/03/23 16:13:01 by llion            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC="$HOME/.dwarffortress/data"

if [ -e "$SRC/init/init-graph.txt" ]; then
   echo "Dwarf Fortress est en mode terminal."
   echo "Passage en mode graphique."
   cp "$SRC/init/init.txt" "$SRC/init/init-term.txt"
   cp "$SRC/init/init-graph.txt" "$SRC/init/init.txt"
   cp "$SRC/init/init-graph.txt" "$SRC/init/init-temp.txt"
   rm "$SRC/init/init-graph.txt"
else
   if [ -e "$SRC/init/init-term.txt" ]; then
      echo "Dwarf Fortress est en mode graphique."
      echo "Passage en mode terminal."
       cp "$SRC/init/init.txt" "$SRC/init/init-graph.txt"
       cp "$SRC/init/init-term.txt" "$SRC/init/init.txt"
       cp "$SRC/init/init-term.txt" "$SRC/init/init-temp.txt"
       rm "$SRC/init/init-term.txt"
   fi
fi
