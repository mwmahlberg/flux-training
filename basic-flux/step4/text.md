Now, we set up git and the gh client:

1. [Create a personal access token (PAT) at Github](https://github.com/settings/personal-access-tokens/new).

    The basic settings should look similar to this:

    ![Basic Settings](../../assets/basic-flux/step4/BasicSettings.png)

    The only permission required for that token is:

    ![Required Permissions](../../assets/basic-flux/step4/Permission.png)

    After clicking "Generate Token", your token will be shown -- ***once***.

    **Note it down**.
    
2. Export your PAT in the shell:

    `export GITHUB_TOKEN=<YourPAT>`{{copy}}

3. Check that we can access our repo:

    `gh repo clone $GH_REPO mycluster`{{exec}}

4. Setup git authentication:

    ```
    cd mycluster 
    gh auth setup-git
    ```{{exec}}

5. Set up the name for the git user:

    `git config user.name "<YourName>"`{{copy}}

6. Set up the email for the git user:
    `git config user.email "<YourEmail>"`{{copy}}


The `$GITHUB_TOKEN`{{}} is [also needed for bootstrapping flux with GitHub](https://fluxcd.io/flux/installation/bootstrap/github/#github-pat).

