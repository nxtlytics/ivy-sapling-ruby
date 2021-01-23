# Ruby Application (Docker) Sapling

This repository contains a sapling (skeleton) for building a Ruby Application in Docker using bundler that can be uploaded to a container registry.

Ruby applications that run in Docker can be deployed to Kubernetes, Docker Swarm, or really anywhere!

## Getting started

1. Create a new project based on this sapling.
    * Visit [ivy-sapling-ruby/generate](https://github.com/nxtlytics/ivy-sapling-ruby/generate) or
    * click "Use this template"

    Proceed to name your new repository

    **Protip**: project names should be short, and descriptive. 

    ![Use this template button](https://help.github.com/assets/images/help/repository/use-this-template-button.png)

2. Clone the resulting project to your computer
    ```
    cd ~/code
    git clone git@github.com:<your-org>/<new-app>.git
    cd <new-app>
    ```

3. Remove this `README.sapling.md` file

4. Edit your dependencies
    * Install dependencies with pipenv e.g., `bundle install <dependency>`, or
    * edit `Gemfile`

5. Add your code
    * Update a `main.rb` in the `src` folder containing your main entrypoint
    * Add your ruby code and supporting libraries to the `src` folder
    * Run `bundle lock` to sync your local dependencies from `Gemfile.lock`
      *Dependencies installed, but not listed in your lock file will not be installed in CICD!*

6. Edit the `Dockerfile`
    * Find the latest `nxtlytics/base-ruby` or `nxtlytics/base-rubyi-jemalloc` image in hub.docker.com ([see here](https://hub.docker.com/r/nxtlytics/))
      and update the `FROM`
    * Ensure your code is captured in the `ADD` statement
    * Ensure the `CMD` points to your application's entrypoint

7. Commit your code
    * See the section on [Workflow](#Workflow) for Git workflow processes and best practices

8. Add your project to CICD

9. 🎉 Party! 🎉
