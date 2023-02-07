import pandas as pd


DIR = '../../website/data/'
FILE_IN = DIR + 'ideas.xlsx'
FILE_OUT = 'ideas.json'

def split_entry(string):
    return [each.strip() for each in string.split(',')]


if __name__ == '__main__':
    data = pd.read_excel(FILE_IN)

    data = data.rename(columns={
        'Project title': 'title',
        'Mentor names and emails (at least one mentor per project)': 'supervisors',
        'A nice image to make your project more attractive for students\n(optional but highly recommended)': 'img',
        'Project description (2-5 sentences)': 'description',
        'A list of expected results': 'goal',
        'Keywords': 'keywords',
        'Project size': 'size',
        'Project difficulty': 'difficulty',
        'Required skills': 'required_skills',
        'Preferred skills': 'preferred_skills' })

    data = data[['title', 'img', 'supervisors', 'description', 'goal',
                 'keywords', 'size', 'difficulty', 'required_skills',
                 'preferred_skills']]

    data = data.fillna('')

    data['supervisors'] = data['supervisors'].apply(split_entry)
    data['keywords'] = data['keywords'].apply(split_entry)

    data['skills'] = data.apply(
        lambda row: {
            'required': split_entry(row['required_skills']),
            'preferred': split_entry(row['preferred_skills']) }, axis=1)

    data['size'] = data['size'].apply(lambda x: x.split()[0])
    data['difficulty'] = data['difficulty'].apply(lambda x: x.split()[0])

    data.to_json(FILE_OUT, orient='records', indent=2)