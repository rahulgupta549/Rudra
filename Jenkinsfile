node{

stage('git checkout'){
checkout scm
}
stage('cloning github'){
	git credentialsId: 'f23b2030-4f19-4e80-829a-dad795e7f3be', url: 'https://github.com/rahulgupta549/Rudra.git'
	sh label: '', script: '''cd /var/tmp
	git clone https://github.com/rahulgupta549/Rudra.git
	cd Rudra
	ls -al
	'''
	}
	stage ('AnsiblePlaybook'){
	sh label: '', script: '''cd /var/tmp
	ansible-playbook --syntax-check $ansibleplaybook'''
	}
stage ('Notification'){
	mail from: "rahul549.007@gmail.com"
		 to: "rahulgupta549@hotmail.com"
		 subject: "ansbile deployment status"
		 body: "Jenkins jobs ${env.JOB_NAME"} - build ${env.BUILD_NUMBER} ${currentBuild.currentResult} ${env.JIB_URL} complete"
	)
}
