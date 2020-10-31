import json
import wikipedia


def handler(event, context):
    body = json.loads(event['body'])
    print(f'Request body: {body}')

    topic = body['topic']
    return {
        'statusCode': 200,
        'body': json.dumps(
            {'search_results': wikipedia.search(topic)}
        )
    }
