from setuptools import setup, find_packages

setup(
    name='apiverve_htmltoimage',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='HTML to Image is an HTML to image API that renders HTML code into a high-quality PNG image. Paid plans add custom dimensions and JPEG or WebP output.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/htmltoimage?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
