Now, we set up git and the gh client:

1. [Create a personal access token (PAT) at Github](https://github.com/settings/personal-access-tokens/new).

    The basic settings should look similar to this:

    ![Basic Settings](../images/BasicSettings.png)

    The only permission required for that token is:

    ![Required Permissions](../images/Permission.png)

    After clicking "Generate Token", your token will be shown -- ***once***.

    **Note it down**.
    
2. Export your PAT in the shell:

    `export GITHUB_TOKEN=<YourPAT>`{{copy}}

3. Set up the name for the git user:

    `git config --global user.name "<YourName>"`{{copy}}

4. Set up the email for the git user:
   
    `git config --global user.email "<YourEmail>"`{{copy}}

5. Check that we can access our repo:

    `gh repo clone $GH_REPO mycluster`{{exec}}

6. Setup git authentication:

    ```
    cd mycluster 
    gh auth setup-git
    ```{{exec}}




The `$GITHUB_TOKEN`{{}} is [also needed for bootstrapping flux with GitHub](https://fluxcd.io/flux/installation/bootstrap/github/#github-pat).

