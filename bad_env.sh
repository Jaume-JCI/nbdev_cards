git clone git@github.com:Jaume-JCI/nbdev_cards.git -b nbdev_new_issue
cd nbdev_cards
yes | conda create -n bad_env pip
conda activate bad_env
pip install -e ~/other/nbdevv2/nbdev
pip install -e ~/other/nbdevv2/fastcore
nbdev_new --nbs_path nbs --lib_name nbdev_cards --description "nbdev cards" --user Jaume-JCI --author "Jaume Amores" --author_email jamorej@jci.com --repo nbdev_cards
sed -i 's/recursive = False/recursive = True/' settings.ini
nbdev_export
pip install -e .
nbdev_prepare
nbdev_preview --port 3012
