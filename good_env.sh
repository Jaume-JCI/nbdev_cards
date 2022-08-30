git clone git@github.com:Jaume-JCI/nbdev_cards.git -b nbdev_new_issue
cd nbdev_cards
yes | conda create -n good_env pip
conda activate good_env
pip install -e ~/other/nbdevv2/nbdev
pip install -e ~/other/nbdevv2/fastcore
nbdev_new --recursive True --nbs_path nbs --lib_name nbdev_cards --description "nbdev cards" --user my_user --author my_author --author_email my_email --repo nbdev_cards
nbdev_export
pip install -e .
nbdev_prepare
nbdev_preview --port 3012
